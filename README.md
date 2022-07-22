<img src="./resources/logotype.png" width="96px" height="96px"/>

Pull request reviews is a key activity to control quality. It's also a
time-consuming (read: expensive) task. **Setuju** analyzes PR metrics so that
reviewers won't waste their time on low-quality requests.

# Usage

Add the App's private key to `.env`.

Next, install and run.

```
bundle install
bundle exec ruby server.rb
```

# How to contribute

Thank you for considering to contribute to this project. We appreciate all
efforts to improve Setuju, no matter how small. Please fork the repo, make your
changes, and submit a pull request.

Small pull request will be processed much faster and are less likely to be
rejected. Please also observe that the static code analysis is _very_ strict,
so you'll most likely want to ensure that your changes pass the checks locally.


```bash
./mvnw -Pdev clean verify
```

