---
marp: true
theme: default
paginate: true
backgroundColor: '#000000'
color: '#ffdf00'
footer: 'Technical Web Testing 101 · AI-generated summary'
style: |
  section { font-family: Arial, Helvetica, sans-serif; font-size: 27px; line-height: 1.3; padding: 55px 60px 65px; }
  section h1 { color: #ff4b4b !important; font-size: 46px; line-height: 1.15; }
  section h2 { color: #ff4b4b !important; font-size: 36px; line-height: 1.2; }
  a { color: #ffdf00; }
  strong { color: #ffffff; }
  footer, section::after { color: #ffffff; font-size: 15px; }
  pre, code, pre code { background: #171717; color: #ffdf00; }
  pre { font-size: 20px; }
  pre code * { color: #ffdf00 !important; }
  img { max-width: 100%; max-height: 300px; object-fit: contain; }
  table { font-size: 24px; }
  th, td, tr { background: #000000 !important; color: #ffdf00; border-color: #ff4b4b !important; }
---

# Virtual Machines

Technical Web Testing 101 · Section 13

**AI-generated summary of Alan Richardson's recording.**

Key points and redrawn diagrams; these slides do not reproduce the complete original deck.

[Watch from 05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s) · [Transcript](transcript.md)

---

## Run separate environments on one host

![A host runs a browser virtual machine and an application virtual machine which communicate over a configured network](../../images/virtual-machines.svg)

The recording combines a Windows browser VM with a Linux application VM.

[Watch: 05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s)

---

## Import and start a prepared appliance

- Download the VM image and extract all required parts.
- Import the appliance into the virtual machine manager.
- Review memory, storage and network settings.
- Start the guest and read its access instructions and reported address.

[Watch: 05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s)

---

## Use VMs for a specific testing purpose

- Compare browser and operating-system combinations.
- Run an application such as Redmine without installing its stack on the host.
- Connect the browser guest to the application guest over the configured network.
- Run supporting automation away from the main desktop environment.

[Watch: 05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s)

---

## Recognise the limits of the recorded setup

- The demo shows VirtualBox, TurnKey appliances and historical modern.ie images.
- Those downloads, browser versions and licensing details describe that period.
- Guest networking and available resources affect the experiment.
- A VM gives a useful environment, but does not reproduce every physical-device condition.

[Watch: 05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s)
