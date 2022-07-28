<img src="https://avatars2.githubusercontent.com/in/220165" width="96px" height="96px"/>

Pull request reviews is a key activity to control quality. It's also a
time-consuming (read: expensive) task. **Setuju** analyzes PR metrics so that
reviewers won't waste their time on low-quality requests.

# Usage

Add the App's private key to `.env`.

Next, build the Docker image.

```
docker build -t setuju .
```

Finally, run the container.

```
docker run -d --rm -p 8080:8080 -v $(pwd)/.env:/app/.env setuju
```

# How to contribute

Thank you for considering to contribute to this project. We appreciate all
efforts to improve Setuju, no matter how small. Please fork the repo, make your
changes, and submit a pull request.

Small pull request will be processed much faster and are less likely to be
rejected. Please also observe that the static code analysis is pretty strict,
so you'll most likely want to ensure that your changes pass the checks locally.

```bash
bundle exec rake
```
