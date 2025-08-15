def call(Map args = [:]) {
  stage(args.stage ?: 'Stage') {
    echo "Shared lib placeholder. Extend with lint/test/scan steps."
  }
}
