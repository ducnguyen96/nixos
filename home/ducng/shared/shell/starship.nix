{config, ...}: {
  home.sessionVariables.STARSHIP_CACHE = "${config.xdg.cacheHome}/starship";

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      scan_timeout = 10;

      add_newline = true;
      line_break.disabled = true;

      format = ''
[┌──>](bold fg:111) in $directory$git_branch$git_status
[└>](bold fg:111) $username
      '';

      username = {
        show_always = true;
        format = "[$user]($style) 💬 ";
        style_user = "bold cyan";
      };
      
      character = {
        success_symbol = "[❄](green)";
        error_symbol = "[❄](red)";
        vimcmd_symbol = "[❄](green)";
      };

      directory = {
        home_symbol = "home";
        style = "cyan";
      };

      git_commit.tag_symbol = " 🏷 ";
      git_branch = {
        style = "fg:117";
        symbol = "";
      };

      git_metrics = {
        added_style = "bold yellow";
        deleted_style = "bold red";
        disabled = false;
      };

      aws.symbol = "🅰 ";
      bun.symbol = "bun ";
      c.symbol = "C ";
      cobol.symbol = "cobol ";
      conda.symbol = "conda ";
      crystal.symbol = "cr ";
      cmake.symbol = "cmake ";
      daml.symbol = "daml ";
      dart.symbol = "dart ";
      deno.symbol = "deno ";
      dotnet.symbol = ".NET ";
      directory.read_only = " 🔒";
      docker_context.symbol = "🐳 ";
      elixir.symbol = "exs ";
      elm.symbol = "elm ";
      golang.symbol = "go ";
      guix_shell.symbol = "guix ";
      hg_branch.symbol = "hg ";
      java.symbol = "java ";
      julia.symbol = "jl ";
      kotlin.symbol = "kt ";
      lua.symbol = "🌙 ";
      memory_usage.symbol = "memory ";
      meson.symbol = "meson ";
      nim.symbol = "nim ";
      nix_shell.symbol = "❄️ ";
      ocaml.symbol = "ml ";
      opa.symbol = "opa ";
      nodejs.symbol = " ";
      package.symbol = "pkg ";
      perl.symbol = "pl ";
      php.symbol = "php ";
      pulumi.symbol = "pulumi ";
      purescript.symbol = "purs ";
      python.symbol = "🐍 ";
      raku.symbol = "raku ";
      ruby.symbol = "rb ";
      rust.symbol = "🦀 ";
      scala.symbol = "scala ";
      spack.symbol = "spack ";
      sudo.symbol = "🧙 ";
      swift.symbol = "swift ";
      terraform.symbol = "💠 ";
      zig.symbol = "zig ";
    };
  };
}
