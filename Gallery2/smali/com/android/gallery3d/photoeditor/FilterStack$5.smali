.class Lcom/android/gallery3d/photoeditor/FilterStack$5;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/Filter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->val$filter:Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->release()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$5;->val$filter:Lcom/android/gallery3d/photoeditor/filters/Filter;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$1000(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 231
    return-void
.end method
