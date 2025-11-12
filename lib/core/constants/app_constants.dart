class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'SkillList';
  static const String appVersion = '1.0.0';

  // API & Network
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  // Cache Keys
  static const String userCacheKey = 'user_cache';
  static const String tokenCacheKey = 'token_cache';

  // Firestore Collections
  static const String usersCollection = 'users';
  static const String projectsCollection = 'projects';
  static const String tasksCollection = 'tasks';
  static const String chatsCollection = 'chats';
  static const String messagesCollection = 'messages';

  // Storage Paths
  static const String profilePicturesPath = 'profile_pictures';
  static const String projectImagesPath = 'project_images';
  static const String chatAttachmentsPath = 'chat_attachments';

  // Validation
  static const int minPasswordLength = 6;
  static const int maxUsernameLength = 20;
  static const int minUsernameLength = 3;
}
