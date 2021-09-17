const progressbar = () => {
  const progress = document.querySelector(".js-completed-bar");
  if (progress) {
    progress.style.width = progress.getAttribute("data-complete") + "%";
    progress.style.opacity = 1;
  }
}

export { progressbar }; 