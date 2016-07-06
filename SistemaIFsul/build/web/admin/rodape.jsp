</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../../sb/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="../../sb/bower_components/jquery/dist/jquery.maskedinput.js" type="text/javascript"></script>
    <!-- Inclusão do Plugin jQuery Validation-->
    <script src="http://jqueryvalidation.org/files/dist/jquery.validate.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../../sb/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../../sb/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../../sb/dist/js/sb-admin-2.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="../../sb/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../../sb/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    
    jQuery("#txtAnoSemestre").mask("9999/99");
    jQuery("#data").mask("99/99/9999");
    
    </script>

</body>

</html>