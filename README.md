<p align="center">
    <img width="800" src="https://github.com/hmntsharma/ansible-cisco-segment-routing/blob/main/docs/assets/images/heading.png?raw=true" alt="logo">
</p>

---

<h3 align="center">Ansible Segment Routing with TI-LFA on Cisco XRv9k platform</h3>


<a align="center" href="https://hmntsharma.github.io/ansible-cisco-segment-routing/">Lab-Guide</a>

---


### Alternative to the local installation described in the lab guide

##### 1. Pull the container as shown below.

```ruby
docker pull ghcr.io/hmntsharma/ansible-cisco-sr-lab:latest
```

##### 2. Follow the lab guide for each step as you execute the ansible playbook.

```ruby
docker run -it ghcr.io/hmntsharma/ansible-cisco-sr-lab:latest ansible-playbook all_inclusive_play.yaml
```
