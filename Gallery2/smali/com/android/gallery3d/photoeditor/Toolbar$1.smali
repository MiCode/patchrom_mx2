.class Lcom/android/gallery3d/photoeditor/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0136

    if-eq v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0138

    if-ne v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    check-cast p2, Lcom/android/gallery3d/photoeditor/EffectsBar;

    .end local p2
    #setter for: Lcom/android/gallery3d/photoeditor/Toolbar;->mEffectBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0, p2}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$202(Lcom/android/gallery3d/photoeditor/Toolbar;Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 65
    :cond_1
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method
