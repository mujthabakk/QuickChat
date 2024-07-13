import 'package:chat__app/core/exception/base_exception.dart';

final class StorageException extends BaseException {
  const StorageException(String? message)
      : super(message: message ?? 'Unknown StorageException');
}
