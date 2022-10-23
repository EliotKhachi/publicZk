# Mapping XML Elements With Spring Annotations 

|External XML File|Spring Annotation|
|-|-|
|bean|@Component/@Service/@Repository|
|dependency-configuration.xml"|@ComponentScan|  
|ClassPathXmlApplicationContext|AnnotationConfigApplicationContext|
|\<constructor-arg value="..."\>|@Value("...")|
|context.getBean(\<ClassName\>.class)|context.getBean(\<ClassName\>.class)|
|Hard code file path|@PropertySource|

## Tags
#spring
