.class Lcom/android/gallery3d/photoeditor/FilterStack$8;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->redo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
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
    .line 327
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$1000(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->invalidateTopFilter()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$1200(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$8;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 336
    return-void
.end method
