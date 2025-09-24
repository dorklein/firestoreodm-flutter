import 'package:analyzer/dart/ast/ast.dart';

typedef CollectionErrorReporter = void Function(CollectionAnalysisError);

CollectionErrorReporter errorReporter = (error) {
  throw UnsupportedError('CollectionAnalysisError found but no errorReporter specified: $error');
};

enum CollectionAnalysisErrorCode { missing }

class CollectionAnalysisError {
  CollectionAnalysisError.ast(this.message, {required this.targetNode, required this.code});

  final String message;
  final AstNode targetNode;
  final CollectionAnalysisErrorCode? code;

  @override
  String toString() {
    var trailing = '';
    trailing += ' ; node: $targetNode (${targetNode.runtimeType})';

    return 'CollectionAnalysisError: $message$trailing';
  }
}
