function openModal(title, date, description) {
    document.getElementById("myModal").style.display = "block";
    document.getElementById("modalTitle").innerText = title;
    document.getElementById("modalDate").innerText = "Date: " + date;
    document.getElementById("modalDescription").innerText = description;
}

function closeModal() {
    document.getElementById("myModal").style.display = "none";
}
