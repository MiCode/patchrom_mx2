.class Lcom/android/gallery3d/photoeditor/FilterStack$7;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->undo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$100(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$100(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$1100(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->invalidate()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$700(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$7;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 318
    return-void
.end method
