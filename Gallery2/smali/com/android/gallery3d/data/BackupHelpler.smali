.class public Lcom/android/gallery3d/data/BackupHelpler;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupHelpler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.gallery3d_preferences"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.gallery3d_preferences_0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.android.gallery3d_preferences_1"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 14
    .local v0, helper:Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "com.android.gallery3d.data"

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/data/BackupHelpler;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 15
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 16
    return-void
.end method
