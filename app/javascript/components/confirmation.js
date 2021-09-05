const confirmation = () => {

  const wrappers = document.querySelectorAll(".toggle-container")
  if(wrappers.length > 0){
    console.log("Hello")
    wrappers.forEach(wrapper => {
      wrapper.addEventListener("click", (event) => toggleSummary(wrapper))
    })
  }
  

  const toggleSummary = (wrapper) => {
    // console.log(event.target)
    const content = wrapper.getElementsByClassName("toggle-content")[0]
  
    // if (content.classList.contains('toggle-on')) {
      content.classList.toggle('toggle-on')
    // }
    // else {
    //   content.classList.add("toggle-on")
    // }
  }
}

export { confirmation };