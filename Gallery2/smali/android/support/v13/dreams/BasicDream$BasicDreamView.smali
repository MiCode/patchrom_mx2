.class Landroid/support/v13/dreams/BasicDream$BasicDreamView;
.super Landroid/view/View;
.source "BasicDream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/dreams/BasicDream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BasicDreamView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v13/dreams/BasicDream;


# direct methods
.method public constructor <init>(Landroid/support/v13/dreams/BasicDream;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->this$0:Landroid/support/v13/dreams/BasicDream;

    .line 44
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->setSystemUiVisibility(I)V

    .line 54
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-virtual {v0, p1}, Landroid/support/v13/dreams/BasicDream;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method
