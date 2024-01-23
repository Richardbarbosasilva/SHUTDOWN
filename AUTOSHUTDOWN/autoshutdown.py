import pyautogui
import time
import os

timeout_seconds = 7200

def is_mouse_inactive(timeout_seconds):
    initial_position = pyautogui.position()
    inactive_time = 0
    
    while True:
        current_position = pyautogui.position()

        if current_position != initial_position:

            # if mouse moves, restart the countdown

            initial_position = current_position
            inactive_time = 0
        else:
            # if mouse does not moves, every passing second will count until achieve the value in "timeout_seconds"

            inactive_time += 1

        if inactive_time >= timeout_seconds:
            return True  

        time.sleep(1)  # Aguarda 1 segundo antes de verificar novamente

#after reaching timeout_seconds it will then print a message in the output and then force the PC's shutdown 

try:
    while True:
        if is_mouse_inactive(timeout_seconds):
            print(f"O mouse está inativo por {timeout_seconds} segundos.")
            print(f"Pc reiniciará em instantes")
            time.sleep (3)
            os.system("shutdown /s /t 0")

        else:
            print("O mouse está ativo.")

except KeyboardInterrupt:
    print("\nEncerrando o loop continuo.")
