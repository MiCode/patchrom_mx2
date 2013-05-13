.class Lcom/android/gallery3d/photoeditor/EffectsMenu$1;
.super Ljava/lang/Object;
.source "EffectsMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

.field final synthetic val$effectsId:I

.field final synthetic val$listener:Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;

.field final synthetic val$toggleId:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$toggleId:I

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$listener:Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;

    iput p4, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$effectsId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$toggleId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 75
    .local v0, selected:Z
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$toggleId:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$listener:Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;->val$effectsId:I

    invoke-interface {v3, v0, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;->onToggle(ZI)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewSelected(IZ)V

    .line 76
    return-void
.end method
