.class Lcom/android/gallery3d/app/MovieMmsController$4;
.super Ljava/lang/Object;
.source "MovieMmsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieMmsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieMmsController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieMmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 126
    const-string v0, "/sdcard"

    .line 127
    .local v0, currentDiretory:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.meizu.action.SAVE_FILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "init_directory"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "SAVEATTACHMENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieMmsController;->access$600(Lcom/android/gallery3d/app/MovieMmsController;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mIsFromRecord:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieMmsController;->access$700(Lcom/android/gallery3d/app/MovieMmsController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    const-string v3, "video.3gp"

    #setter for: Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieMmsController;->access$602(Lcom/android/gallery3d/app/MovieMmsController;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    :cond_0
    const-string v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieMmsController;->access$600(Lcom/android/gallery3d/app/MovieMmsController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieMmsController;->access$800(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieMmsController$4;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 143
    return-void
.end method
