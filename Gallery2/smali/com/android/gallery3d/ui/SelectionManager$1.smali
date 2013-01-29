.class Lcom/android/gallery3d/ui/SelectionManager$1;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$1;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager$1;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v1, -0x1

    #setter for: Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->access$002(Lcom/android/gallery3d/ui/SelectionManager;I)I

    .line 287
    return-void
.end method
