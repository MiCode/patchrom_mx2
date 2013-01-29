.class Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;
.super Ljava/lang/Object;
.source "DoodleEraserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;->clearDoodles()V

    .line 164
    :cond_0
    return-void
.end method
