.class Lcom/android/gallery3d/photoeditor/FilterStack$2;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$canRedo:Z

.field final synthetic val$canUndo:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-boolean p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->val$canUndo:Z

    iput-boolean p3, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->val$canRedo:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$000(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->val$canUndo:Z

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$2;->val$canRedo:Z

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;->onStackChanged(ZZ)V

    .line 178
    return-void
.end method
