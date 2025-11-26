window.addEventListener("message", (event) => {
    const data = event.data;

    if (!data || !data.action) return;

    if (data.action === "showUI") {
        toggleUI(data.visible);
        updateBreadcrumb(data.path || []);
        updateCategories(data.categories || null, data.categoryIndex || 0);
        updateElements(data.elements || [], data.index || 0);
        highlightIndex(data.index || 0);
    }

    if (data.action === "updateElements") {
        updateBreadcrumb(data.path || []);
        updateCategories(data.categories || null, data.categoryIndex || 0);
        updateElements(data.elements || [], data.index || 0);
        highlightIndex(data.index || 0);
    }

    if (data.action === "keydown") {
        highlightIndex(data.index);
    }

    if (data.action === "showNotification") {
        showNotification(data.type, data.title, data.desc, data.duration);
    }
});

function toggleUI(show) {
    document.getElementById("menu-container").classList.toggle("hidden", !show);
}

function updateBreadcrumb(pathList) {
    document.getElementById("breadcrumb").innerText = pathList.join(" > ");
}

function updateCategories(categories, activeIndex) {
    const container = document.getElementById("categories");
    container.innerHTML = "";

    if (!categories) return;

    categories.forEach((c, i) => {
        const div = document.createElement("div");
        div.className = "category" + (i === activeIndex ? " active" : "");
        div.innerText = c.label || ("Category " + i);
        container.appendChild(div);
    });
}

function updateElements(elements, hoveredIndex) {
    const content = document.getElementById("elements");
    content.innerHTML = "";

    elements.forEach((el, i) => {
        const div = document.createElement("div");
        div.className = "element" + (i === hoveredIndex ? " selected" : "");
        div.innerText = el.label || ("Item " + i);

        if (el.type === "checkbox" || el.type === "scrollable-checkbox" || el.type === "slider-checkbox") {
            const cb = document.createElement("span");
            cb.className = "checkbox";
            cb.innerText = el.checked ? "ON" : "OFF";
            div.appendChild(cb);
        }

        if (el.type === "slider" || el.type === "slider-checkbox") {
            const sv = document.createElement("span");
            sv.className = "slider-value";
            sv.innerText = el.value;
            div.appendChild(sv);
        }

        div.addEventListener("click", () => {
            const index = i;
            fetch(`https://${GetParentResourceName()}/enter`, {
                method: "POST",
                body: JSON.stringify({ index: index })
            });
            highlightIndex(index);
        });

        content.appendChild(div);
    });
}

function highlightIndex(i) {
    const els = document.querySelectorAll(".element");
    els.forEach((el, idx) => {
        if (idx === i) {
            el.classList.add("selected");
            el.scrollIntoView({ block: "nearest" });
        } else {
            el.classList.remove("selected");
        }
    });
}

function showNotification(type, title, desc, duration) {
    const container = document.getElementById("notifications");

    const n = document.createElement("div");
    n.className = "notification";

    n.innerHTML = `
        <div class="notification-title">${title || "KOBRA"}</div>
        <div class="notification-desc">${desc || ""}</div>
    `;

    container.appendChild(n);

    setTimeout(() => {
        n.style.opacity = "0";
        setTimeout(() => n.remove(), 300);
    }, duration || 3000);
}
