require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  def setup
    @controller = ApiController.new
  end

  test "should post :cli" do
    params = {"objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>"generate_docs(project, version, options)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>"run(modules, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>"docs_from_dir(dir, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>"docs_from_files(files, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>"docs_from_modules(modules, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>"exception(args)", "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>"message(exception)", "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>"run(filename)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>"run(filename, config \\\\ Mix.Project.config())", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>"run(args, config \\\\ Mix.Project.config(), generator \\\\ :erlang.make_fun(InchEx, :generate_docs, 3), reporter \\\\ InchEx.Reporter.Local)", "source"=>nil, "specs"=>nil, "type"=>"def"}], "controller"=>"api", "action"=>"cli", "api"=>{"objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>"generate_docs(project, version, options)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>"run(modules, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>"docs_from_dir(dir, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>"docs_from_files(files, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>"docs_from_modules(modules, config)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>"exception(args)", "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>"message(exception)", "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>"run(filename)", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>"run(filename, config \\\\ Mix.Project.config())", "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>"run(args, config \\\\ Mix.Project.config(), generator \\\\ :erlang.make_fun(InchEx, :generate_docs, 3), reporter \\\\ InchEx.Reporter.Local)", "source"=>nil, "specs"=>nil, "type"=>"def"}]}}
    post :cli, params
    assert_response :success
  end
end
