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
    </ThemeProvider>
  );
}

export default App;
