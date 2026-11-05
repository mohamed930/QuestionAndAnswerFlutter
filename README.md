# 📚 Flutter Quiz App — Simple State & Data Passing POC

A small Flutter proof of concept demonstrating how to build a multiple-choice question screen, manage a selected answer, and show feedback after confirmation.

## ✨ What this POC demonstrates

- **Reusable UI components** — each answer is rendered with a reusable `AnswerOption` widget.
- **Parent → Child data passing** — the parent sends each answer through constructor parameters.
- **Child → Parent communication** — the child reports selection changes through a callback.
- **StatefulWidget** — the parent owns the selected answer and updates the UI with `setState()`.
- **Radio buttons** — users can select only one answer from the available choices.
- **Answer confirmation** — the screen checks the selected answer and displays feedback.

## 🧭 How data flows

```text
Parent (StatefulWidget)
  ├─ owns selectedAnswer
  ├─ passes answer + groupValue to AnswerOption
  │
  └─ receives onChanged(value) callback
       └─ setState(() => selectedAnswer = value)
            └─ rebuilds UI with the new selection
```

**In short:** data goes down through parameters; events go up through callbacks.

## 🧩 Component responsibilities

| Component | Responsibility |
|---|---|
| `AnswerComponet` | Holds the selected answer and builds the list of choices |
| `AnswerOption` | Displays one answer row: a `Radio` and its text |
| Parent screen | Supplies the question and answers, then handles confirmation/feedback |

## 🧠 Why use `StatefulWidget`?

The selected answer changes while the user interacts with the screen. A `StatefulWidget` lets the parent keep that changing value in its `State`:

```dart
String? selectedAnswer;

setState(() {
  selectedAnswer = value;
});
```

Calling `setState()` tells Flutter to rebuild the affected UI using the updated state.

## 🖼️ Evidence

### Evidence 1 — Answer selected, before confirmation

The first screenshot shows the quiz screen with an option selected and the **Confirm Answer** button. The correct-answer feedback is visible below the button.

![Selected answer and feedback](https://drive.google.com/file/d/1aoeKgMbuB3C353W_vCL6v-LB07iIDjJh/view?usp=sharing)

### Evidence 2 — Answer selected, confirmation state

The second screenshot shows the selected answer and the confirmation button in its success state. This demonstrates the screen's visual response after confirming the answer.

![Confirmed answer state](https://drive.google.com/file/d/14MUA7o8DzUAWvx79weDXek0wiqFoYPQq/view?usp=sharing)

> Replace the image paths above with the actual screenshot locations in your repository. For example, keep the screenshots in `docs/images/` and commit them with the README.

## 🚀 Run the project

```bash
flutter pub get
flutter run
```

## 📝 Learning takeaway

This POC demonstrates a simple and practical Flutter pattern:

1. Keep the state in the parent when it controls multiple child widgets.
2. Pass display data to children using constructor parameters.
3. Send user actions back to the parent using callbacks.
4. Use `setState()` to update the state and rebuild the UI.
5. Extract repeated UI into reusable widgets to keep code clean and maintainable.

---

Made for learning Flutter widget composition and state management.
