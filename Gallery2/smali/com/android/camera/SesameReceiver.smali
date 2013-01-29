.class public Lcom/android/camera/SesameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SesameReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, packageName:Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const-string v5, "com.android.Sesame"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 31
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "date_modified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    const-string v4, "_data LIKE ? OR _data LIKE ? OR _data LIKE ? OR _data LIKE ?  OR _data LIKE ? OR _data LIKE ? OR _data LIKE ? OR _data LIKE ?"

    .line 33
    .local v4, where:Ljava/lang/String;
    const/16 v5, 0x8

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "%.WMV"

    aput-object v5, v2, v7

    const-string v5, "%.ASF"

    aput-object v5, v2, v8

    const/4 v5, 0x2

    const-string v6, "%.RM"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "%.RMVB"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "%.RV"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "%.WMA"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "%.RA"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "%.RAM"

    aput-object v6, v2, v5

    .line 34
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method
