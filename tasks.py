from invoke import task
import os
from github_changes import GithubFilteredChanges as GC


def get_github_changes():
    repo = 'uv-terraform-eks'
    token = os.environ.get('GITHUB_TOKEN')
    commit = os.environ.get('GITHUB_SHA')
    session = GC.GithubFilteredChanges(repo=repo, path="clusters", hierarchy=1, organization="uveye", token=token,
                                       commit=commit)
    return session.get_changed_files()


@task
def terraform_exec(ctx, command):
    changed_files = get_github_changes()
    clusters_dir = os.path.expanduser('clusters')
    for change in changed_files:
        cluster_name = os.path.basename(change)
        print(cluster_name)
        with ctx.cd(f'{clusters_dir}/{cluster_name}'):
            ctx.run("pwd")
            ctx.run(f"echo be calm, going to execute terraform plan on cluster {change}")
            ctx.run("terraform init")
            ctx.run("terraform validate")
            ctx.run(f"terraform {command}")