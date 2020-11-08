import seaborn as sns
from matplotlib import pyplot as plt

def accuracy_swarmplot(data, x, old_metrics=False, xlabel=None, baseline=1/3, y_label='Mean accuracy\n(of best individual in hall of fame)', hue=None, return_ax=False):
    ax = sns.swarmplot(x=x, y=("mean accuracy" if old_metrics else "MAX:accuracy.mean"), data=data, hue=hue)
    
    ax.set_ylim([0,1])
    
    if xlabel is not None:
        ax.set_xlabel(xlabel)
    ax.set_ylabel(y_label)
    ax.axhline(y=baseline, label="Baseline", lw=1)
    
    ax.legend()
    
    if return_ax:
        return ax
    
    plt.show()