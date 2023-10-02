// Sample JSON data
const jsonData = {
  zettels: [
    {
      title: "SE 1",
      id: 202110021917,
      tags: ["systemsEngineering"],
    },
    {
      title: "SE 2",
      id: 202110021945,
      tags: ["systemsEngineering"],
    },
    {
      title: "SE 3",
      id: 202110021957,
      tags: ["systemsEngineering"],
    },
    {
      title: "COMM 1",
      id: 202110030551,
      tags: ["communication"],
    },
    {
      title: "LAWS 1",
      id: 202110031839,
      tags: ["laws"],
    },
  ],
};
const tagInput = document.getElementById("tagInput");
tagInput.value="";
tagInput.addEventListener("input", renderObjects);

function renderObjects() {
  const inputValue = tagInput.value.toLowerCase();
  const resultDiv = document.getElementById("result");
  if (inputValue == "") {
    resultDiv.innerHTML = "";
    return;
  }

  // Clear the previous results
  resultDiv.innerHTML = "";

  // Filter JSON objects based on the entered tag
  const filteredData = jsonData.zettels.filter((item) => {
    return item.tags.some((tag) => tag.includes(inputValue));
  });
  console.log(filteredData);

  // Render the matching objects
  if (filteredData.length > 0) {
    filteredData.forEach((item) => {
      const link = document.createElement("a");
      link.textContent = item.title;
      link.href = "https://www.eliotkhachi.dev/zettelkasten/"+item.id+"/zettel.html";
      link.id="zettel-link"
      resultDiv.appendChild(link);
    });
  } else {
    resultDiv.textContent = "";
  }
}
