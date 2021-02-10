<p>
  <img width=30% src="https://github.com/openquery-io/synthpy/raw/master/docs/images/getsynth_identicon.png">
</p>

* License: [Apache v2.0](LICENSE)
* Documentation: https://openquery-io.github.io/synthpy
* Homepage: https://github.com/openquery-io/synth

# What is this?

This is the Python client for [`Synth`][getsynth], a fast and highly
configurable **NoSQL synthetic data engine**. It reconciles the two
worlds of [**synthetic
data**](https://en.wikipedia.org/wiki/Synthetic_data) and [**test
data**](https://en.wikipedia.org/wiki/Test_data) by letting users
generate realistic synthetic data for testing their applications and
ML models.

# Quickstart

Here is a quick end-to-end example showing how to use this
client. This example assumes you have setup [`synth`][synth].

```python
from synthpy import Synth

# Assuming `synth` is running on `localhost` with default settings
client = Synth("localhost:8182")

with open("my_users_data.json", "r") as data_f:
    documents = json.load(data_f)

# Submit your JSON documents to `synth` for training
client.put_documents(namespace="app", collection="users", batch=documents)

# Generate 100 new synthetic users
synthetic_users = client.get_documents(namespace="app", collection="users", size=100)
```

# Want to know more?

Head on over to our [main project][synth] or to the
[documentation][docs]. If you have any questions, or have enquiries
about how you could deploy `Synth` in your organization, [hit us
up][contact-us]!

[getsynth]: https://www.getsynth.com
[synth]: https://github.com/openquery-io/synth
[synthpy]: https://github.com/openquery-io/synthpy
[docs]: https://openquery-io.github.io/synth
[contact-us]: https://www.getsynth.com/contact
