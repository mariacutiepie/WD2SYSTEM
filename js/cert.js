// Function to add a new input field beside the existing ones
function addInputField() {
  // Get the container holding the input fields
  var container = document.getElementById("dynamicInputs");

  // Create a new div to wrap the new input
  var newDiv = document.createElement("div");

  // Create the new input element
  var newInput = document.createElement("input");
  newInput.type = "text"; // Set the input type to text
  newInput.name = "certificate[]"; // Ensure the name is an array

  // Add the form-control class to the input for consistent styling
  newInput.classList.add("form-control");

  // Append the new input to the new div
  newDiv.appendChild(newInput);

  // Append the new div to the container
  container.appendChild(newDiv);
}
document.addEventListener("DOMContentLoaded", () => {
  const formElement = document.querySelector(".form");
  const form = document.querySelector("form");
  const skipButton = document.querySelector('a[href="addprofile.php"]');

  // Slide the form into view on page load
  setTimeout(() => {
      formElement.classList.add("slide-in");
  }, 100); // Slight delay for smoother effect

  // Function to handle slide-out animation and navigation
  const triggerSlideOut = (targetURL) => {
      formElement.classList.remove("slide-in");
      formElement.classList.add("slide-out");
      setTimeout(() => {
          window.location.href = targetURL;
      }, 300); // Match CSS transition duration
  };

  // Add event listener for form submission
  form.addEventListener("submit", (e) => {
      e.preventDefault();
      triggerSlideOut("addprofile.php");
  });

  // Add event listener for the skip button
  skipButton.addEventListener("click", (e) => {
      e.preventDefault();
      triggerSlideOut(skipButton.getAttribute("href"));
  });
});
