.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$3$1;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;->onInputShownChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #calls: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$300(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    .line 424
    return-void
.end method
