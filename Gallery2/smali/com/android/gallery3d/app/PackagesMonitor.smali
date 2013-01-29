.class public Lcom/android/gallery3d/app/PackagesMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackagesMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/PackagesMonitor;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getPackagesVersion(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    const-class v2, Lcom/android/gallery3d/app/PackagesMonitor;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "packages-version"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 31
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "packages-version"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 57
    .local v3, version:I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "packages-version"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-static {p1, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-static {p1, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-static {p1, v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 38
    .local v5, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v0, Lcom/android/gallery3d/app/PackagesMonitor$1;

    const-string v2, "GalleryPackagesMonitorAsync"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/PackagesMonitor$1;-><init>(Lcom/android/gallery3d/app/PackagesMonitor;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PackagesMonitor$1;->start()V

    .line 50
    return-void
.end method
