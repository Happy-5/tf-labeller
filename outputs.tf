output "id" {
  value       = "${join("", null_resource.default.*.triggers.id)}"
  description = "Disambiguated ID"
}

output "name" {
  value       = "${join("", null_resource.default.*.triggers.name)}"
  description = "Normalized name"
}

output "namespace" {
  value       = "${join("", null_resource.default.*.triggers.namespace)}"
  description = "Normalized namespace"
}

output "stage" {
  value       = "${join("", null_resource.default.*.triggers.stage)}"
  description = "Normalized stage"
}

output "attributes" {
  value       = "${join("", null_resource.default.*.triggers.attributes)}"
  description = "Normalized attributes"
}

output "tags" {
  value = "${
      merge( 
        map(
          "Name", "${join("", null_resource.default.*.triggers.id)}",
          "Namespace", "${join("", null_resource.default.*.triggers.namespace)}",
          "Stage", "${join("", null_resource.default.*.triggers.stage)}"
        ), var.tags
      )
    }"

  description = "Normalized Tag map"
}
