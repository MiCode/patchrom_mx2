.class Lcom/meizu/preference/CheckBoxPreferenceMz$1;
.super Ljava/lang/Object;
.source "CheckBoxPreferenceMz.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/preference/CheckBoxPreferenceMz;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/preference/CheckBoxPreferenceMz;


# direct methods
.method constructor <init>(Lcom/meizu/preference/CheckBoxPreferenceMz;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz$1;->this$0:Lcom/meizu/preference/CheckBoxPreferenceMz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz$1;->this$0:Lcom/meizu/preference/CheckBoxPreferenceMz;

    #calls: Lcom/meizu/preference/CheckBoxPreferenceMz;->performClick()V
    invoke-static {v0}, Lcom/meizu/preference/CheckBoxPreferenceMz;->access$000(Lcom/meizu/preference/CheckBoxPreferenceMz;)V

    .line 61
    return-void
.end method
