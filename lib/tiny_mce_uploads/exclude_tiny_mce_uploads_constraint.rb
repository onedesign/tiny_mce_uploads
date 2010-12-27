class ExcludeTinyMceUploadsConstraint
  def matches?(request)
    request.path !~ %r{^/tiny_mce_uploads}
  end
end
