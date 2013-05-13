.class Landroid/widget/TextView$1$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$1;->onInputShownChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$1;

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3228
    iput-object p1, p0, Landroid/widget/TextView$1$1;->this$1:Landroid/widget/TextView$1;

    iput-boolean p2, p0, Landroid/widget/TextView$1$1;->val$shown:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3231
    iget-object v0, p0, Landroid/widget/TextView$1$1;->this$1:Landroid/widget/TextView$1;

    iget-boolean v1, p0, Landroid/widget/TextView$1$1;->val$shown:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView$1;->onInputShownChanged(Z)V

    .line 3232
    return-void
.end method
