.class Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;
.super Ljava/lang/Object;
.source "DoodleEraserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mParamsChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DoodleEraserChangeListener;->onClearDoodles()V

    .line 98
    :cond_0
    return-void
.end method
