/*
20130903 add by gaoxl for ���ǣ�add SERMF008
*/


/*
================================================================================
��ṹ����:TB_SERMF
��ṹ����:Ͷ��ԭ���
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMF;
drop index AK_TB_SERMF;
drop table TB_SERMF;
create table TB_SERMF  (                                       
   SERMF_ID           INTEGER                 not null,            /*Ͷ��ԭ��ID        */   
   SERMF001           VARCHAR2(1)             not null,            /*Ͷ�߹�ϵ��        */   
   SERMF002           VARCHAR2(1)             not null,            /*�׶�              */   
   SERMF003           VARCHAR2(4),                                 /*Ͷ��ԭ�����      */   
   SERMF004           VARCHAR2(60) ,                               /*Ͷ��ԭ������      */   
   SERMF005           VARCHAR2(1),                                 /*�Ƿ�۷���        */ 
   SERMF006           VARCHAR2(1),                                 /*ʧЧ              */ 
   SERMF007           VARCHAR2(255),                               /*��ע              */
   SERMF008           VARCHAR2(1),                                 /*���÷���          */ 
   SERMF009           VARCHAR2(1),                                 /*�۷�����              */ȡֵ��1��һƱ��� 2������ָ�� 3������ָ��
   SERMF010           VARCHAR2(1),                                 /*�۷�γ��              */ȡֵ��1���˿�ϲ���� 2���ۺ���� 3����Ʒ�۸���� 4���������� 5���ۺϹ���     6��ֵ 
   SERMF011           VARCHAR2(1),                                 /*�۷���Ϊ              */ ȡֵ��1����ý���ع⡢�򱻹�����ػ������� 2����ðα��  3���������������������    4���ֳ��ش������Ͷ�ߣ��磺��˿���������ܵȣ� 5��Ʒ��֮����Ծ������໥ڮ��   6������������ⲻ�ϸ� 7����ͬƷ�����¶�ƺЧ������50%-80%������֮�� 8����ͬƷ�����¶�ƺЧ������80%-100%������֮��9���̻��������̳�ȷ�ϵĿ��� 10��������̳����п��ߴ��� 11���̻�δ�����ͻ����� 12���̻�δ�����ͻ��طã���̨�˼�¼13��չ���ڱ��ǩ���淶 14��չ���ڴ������ݲ��淶 15����Ʒ�ۿ�Υ�棨ͨ�����ߡ�Ѳ�����Ų飩16�����ʲ��Ϲ�17��ӪҵԱΥ��18��չ������Υ�� 19��δ��ʱ�������δ��ʱ�����ʱ���            
   SERMF012           INTEGER,                                     /*�۷���Ϊ              */
   SERMF013           VARCHAR2(2),                                 /*ȡֵ��Դ              */
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMF primary key (SERMF_ID)                               
);                                           
create unique index AK_TB_SERMF on TB_SERMF (SERMF003,FLAG);               
create sequence SEQ_TB_SERMF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMF to public;                                     
grant index  on TB_SERMF to public;                                     
grant update on TB_SERMF to public;                                      
grant delete on TB_SERMF to public;                                       
grant insert on TB_SERMF to public;                                      
grant select on SEQ_TB_SERMF to public;                                        