.class Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$9;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$9;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;)V

    .line 406
    .local v0, callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    iget-boolean v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;->val$undo:Z

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->undo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$9$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$9;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$9;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$800(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->redo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    goto :goto_0
.end method
