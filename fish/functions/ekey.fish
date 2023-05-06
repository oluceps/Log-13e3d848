function ekey --description="edit agenix-rekey secret"
    nix run .#edit-secret $argv[1]
end
