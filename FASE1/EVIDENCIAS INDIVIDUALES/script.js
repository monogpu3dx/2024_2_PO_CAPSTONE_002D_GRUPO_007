// Obtener la ruta de la carpeta donde se encuentran los archivos Word
const folderPath = "./";

// Obtener una lista de los archivos Word en la carpeta
const fileList = document.getElementById("file-list");

// Iterar sobre cada archivo Word en la carpeta
for (let i = 0; i < fileList.length; i++) {
  const fileName = fileList[i].name;
  const fileUrl = folderPath + fileName;
  
  // Crear un elemento de lista para cada archivo Word
  const listItem = document.createElement("li");
  listItem.innerHTML = `<a href="${fileUrl}">${fileName}</a>`;
  fileList.appendChild(listItem);
}
