.class Landroid/support/v13/app/FragmentCompatICSMR1;
.super Ljava/lang/Object;
.source "FragmentCompatICSMR1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .parameter "f"
    .parameter "isVisible"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 24
    return-void
.end method
