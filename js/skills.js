// Function to add a new input field beside the existing ones
function addInputField() {
  // Get the container holding the input fields
  const container = document.getElementById("dynamicInputs");

  // Create a new div to wrap the new input and the delete button
  const newDiv = document.createElement("div");
  newDiv.classList.add("input-group", "mb-2");

  // Create the new input element
  const newInput = document.createElement("input");
  newInput.type = "text";
  newInput.name = "skills[]";
  newInput.classList.add("form-control");

  // Add spacing after the input
  const space = document.createTextNode(" \u00A0 "); // Adds non-breaking spaces

  // Create the delete button (FontAwesome icon)
  const deleteIcon = document.createElement("i");
  deleteIcon.classList.add("fa-solid", "fa-xmark");
  deleteIcon.style.cursor = "pointer";
  deleteIcon.onclick = function () {
      container.removeChild(newDiv); // Remove the parent div
  };

  // Append elements to the new div
  newDiv.appendChild(newInput);
  newDiv.appendChild(space);
  newDiv.appendChild(deleteIcon);

  // Append the new div to the container
  container.appendChild(newDiv);
}
document.addEventListener("DOMContentLoaded", () => {
  const formElement = document.querySelector(".form");
  const form = document.querySelector("form");
  const skipButton = document.querySelector('a[href="talent.php"]');

  // Function to trigger slide-out animation
  const triggerSlideOut = (targetURL) => {
      formElement.classList.add("slide-out");
      setTimeout(() => {
          window.location.href = targetURL;
      }, 500); // Match the CSS transition duration
  };

  // Add event listener for the form submit button
  form.addEventListener("submit", (e) => {
      e.preventDefault();
      triggerSlideOut("talent.php");
  });

  // Add event listener for the skip button
  skipButton.addEventListener("click", (e) => {
      e.preventDefault();
      triggerSlideOut(skipButton.getAttribute("href"));
  });
});
