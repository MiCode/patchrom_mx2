.class Lcom/android/gallery3d/photoeditor/PhotoEditor$15$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$15;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$15;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1700(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 734
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$15$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$15;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$15;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 737
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
