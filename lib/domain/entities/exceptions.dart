enum CustomException{
  usecaseError('use case error'),
  networkError('network error'),
  repositoryError('repository error');

  const CustomException(this.message);
  final String message;
}