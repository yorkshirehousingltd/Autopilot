function msgbox {
param (
    [string]$Message,
    [string]$Title = 'Message box title',   
    [string]$buttons = 'OK'
)
# This function displays a message box by calling the .Net Windows.Forms (MessageBox class)
 
# Load the assembly
Add-Type -AssemblyName System.Windows.Forms | Out-Null
 
# Define the button types
switch ($buttons) {
   'ok' {$btn = [System.Windows.Forms.MessageBoxButtons]::OK; break}
   'okcancel' {$btn = [System.Windows.Forms.MessageBoxButtons]::OKCancel; break}
   'AbortRetryIgnore' {$btn = [System.Windows.Forms.MessageBoxButtons]::AbortRetryIgnore; break}
   'YesNoCancel' {$btn = [System.Windows.Forms.MessageBoxButtons]::YesNoCancel; break}
   'YesNo' {$btn = [System.Windows.Forms.MessageBoxButtons]::yesno; break}
   'RetryCancel'{$btn = [System.Windows.Forms.MessageBoxButtons]::RetryCancel; break}
   default {$btn = [System.Windows.Forms.MessageBoxButtons]::RetryCancel; break}
}
 
  # Display the message box
  $Return=[System.Windows.Forms.MessageBox]::Show($Message,$Title,$btn)
  $Return
}
msgbox -Message "test" -Title "title"