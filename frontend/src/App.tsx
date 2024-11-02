import { CalendarPicker } from "@/components/calendar-picker";
import "./App.css";
import "./index.css";

import { ModeToggle } from "@/components/mode-toggle";
import { ThemeProvider } from "@/components/theme-provider";
function App() {
  return (
    <ThemeProvider>
      <div className="absolute top-8 right-12">
        <ModeToggle />
      </div>
      <CalendarPicker />
      <div className="font-mono pt-4 text-accent-foreground text-sm">
        made by <a href="https://github.com/rbbydotdev/someday">@rbbydotdev</a>{" "}
        👋
      </div>
    </ThemeProvider>
  );
}

export default App;
