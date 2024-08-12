const questionnairesEl = document.querySelector('.questionnaires')
const styleListItems = () => Array.from(questionnairesEl.children).forEach((child, i) => {
	const div = child.querySelector('div')
	div.removeAttribute('style')
	if (i % 2 === 0) div.style['background-color'] = 'aliceblue'
})

styleListItems()

const observer = new MutationObserver(() => {
	styleListItems()
});
observer.observe(questionnairesEl, {
	subtree: true,
	childList: true,
});
