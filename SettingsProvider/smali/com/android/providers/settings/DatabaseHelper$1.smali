.class Lcom/android/providers/settings/DatabaseHelper$1;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/DatabaseHelper;->needToRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/DatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper$1;->this$0:Lcom/android/providers/settings/DatabaseHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 101
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper$1;->this$0:Lcom/android/providers/settings/DatabaseHelper;

    #getter for: Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/providers/settings/DatabaseHelper;->access$000(Lcom/android/providers/settings/DatabaseHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->getRestoreSharedPreferences(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, needStore:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "SettingsProvider"

    const-string v3, "DatabaseHelper---needToRestore"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper$1;->this$0:Lcom/android/providers/settings/DatabaseHelper;

    #getter for: Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/providers/settings/DatabaseHelper;->access$000(Lcom/android/providers/settings/DatabaseHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/RestoreSettings;->restoreSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v1           #needStore:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SettingsProvider"

    const-string v3, "DatabaseHelper---needToRestore--fal"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 111
    invoke-static {}, Lcom/android/providers/settings/RestoreSettings;->finish()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SettingsProvider"

    const-string v3, "DatabaseHelper---needToRestore--fal"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    invoke-static {}, Lcom/android/providers/settings/RestoreSettings;->finish()V

    goto :goto_0
.end method
