# Use FastAI with KhulnaSoft Machine Learning!

This repository has examples showing you how to use FastAI on KhulnaSoft ML.

# Work interactively

In the first notebook cell, run:

```python
!pip install fastai
```

In the second notebook cell, run:

```
!git clone https://github.com/fastai/course-v3.git
```

All of the notebook samples should now be cloned and ready to run.

# Submit remote jobs

## Prepare scripts
For this tutorial, the training script **train.py** is provided [here](). In practice, you can take any custom training script, as is, and run it with Khulnasoft Machine Learning.

## Define the FastAI environment
Create an environment object and enable Docker. 

```python
from khulnasoftml.core import Environment
fastai_env = Environment("fastai2")
fastai_env.docker.enabled = True
fastai_env.docker.base_image = "fastdotai/fastai2:latest"
fastai_env.python.user_managed_dependencies = True
```

```python
from khulnasoftml.core import ScriptRunConfig, Experiment, Workspace

ws = Workspace.from_config()

fastai_config = ScriptRunConfig(source_directory='fastai-example', script='train.py')
fastai_config.run_config.environment = fastai_env
run = Experiment(ws,'fastai-custom-image').submit(fastai_config)
run.wait_for_completion(show_output=True)
```