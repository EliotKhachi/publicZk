// Sample JSON data
let jsonData;
async function fetchData() {
  try {
    const response = await fetch("./zettels.json");
    jsonData = await response.json();
    renderTags();
    renderObjects();
  } catch (error) {
    console.error("Error fetching JSON data:", error);
  }
}

const tagInput = document.getElementById("tagInput");
tagInput.value = "";
tagInput.addEventListener("input", renderObjects);
const availableTagsDiv = document.getElementById("available-tags");

function renderTags() {
  const availableTags = jsonData.registry;
  availableTags.forEach((item) => {
    const tag = document.createElement("button");
    tag.textContent = item;
    tag.id = "tag";
    tag.addEventListener("click", function () {
      tagInput.value=tag.textContent.slice(1);
      renderObjects();
    })
    availableTagsDiv.appendChild(tag);
  });
}

function renderObjects() {
  const inputValue = tagInput.value;
  const resultDiv = document.getElementById("result");
  if (inputValue == "") {
    resultDiv.innerHTML = "";
    return;
  }

  // Clear the previous results
  resultDiv.innerHTML = "";

  // Filter JSON objects based on the entered tag
  const filteredData = jsonData.zettels.filter((item) => {
    return item.tags.some((tag) => tag.toLowerCase().includes(inputValue.toLowerCase()));
  });

  // Render the matching objects
  if (filteredData.length > 0) {
    filteredData.forEach((item) => {
      const link = document.createElement("a");
      link.textContent = item.title;
      link.href =
        "https://www.eliotkhachi.dev/zettelkasten/" + item.id + "/zettel.html";
      link.id = "zettel-link";
      const linkTags = document.createElement("p");
      linkTags.textContent="#" + item.tags.join(" #");
      linkTags.id = "zettel-link-tags"
      link.appendChild(linkTags);
      resultDiv.appendChild(link);
    });
  } else {
    resultDiv.textContent = "";
  }
}

fetchData();
renderObjects();