<?php echo $this->render('header.html',$this->mime,get_defined_vars(),0); ?>
<?php echo $this->render($content,$this->mime,get_defined_vars(),0); ?>
<?php echo $this->render('footer.html',$this->mime,get_defined_vars(),0); ?>