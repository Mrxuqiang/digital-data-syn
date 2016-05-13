20140721 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_OTMCC
��ṹ����:�������ϴ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_OTMCC;
drop index AK_TB_OTMCC;
drop table TB_OTMCC;
create table TB_OTMCC  (
   OTMCC_ID             INTEGER                         not null,  /*�������ϴ�ID             */
   OTMCC001             INTEGER                         not null,  /*�տ���Դ     1������ 2������      */
   OTMCC002             VARCHAR2(30),				   /*���׼�֧�����           */
   OTMCC003             VARCHAR2(30),				   /*OMS�տ��               */
   OTMCC004             INTEGER,				       /*֧����ʽ  1�����׼ң����ϣ� 2���ֽ����׼ң� 3�����п������׼ң�           */   
   OTMCC005             date,				not null,  /*��������               */
   OTMCC006             NUMBER(22,2),                              /*������             */  
   OTMCC007             NUMBER(12,2),				   /*������              */ 
   OTMCC008             VARCHAR2(30),                              /*���׼Ҷ������            */ 
   STATUS               VARCHAR2(1),				  /*����״̬  0��δ���� 1�����ͳɹ� 2������ʧ�� 3�����ͻ���δ���� 4�����ͻ������ͳɹ�         */  
   MSG                  VARCHAR2(300),                             /*��Ϣ��ʾ           */  
   Tran_date            Date,                                      /*��������            */ 
   Send_count           INTEGER,                                   /*�������           */ 
                
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_OTMCC primary key (OTMCC_ID)
);

create sequence SEQ_TB_OTMCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMCC to public;
grant index  on TB_OTMCC to public;
grant update on TB_OTMCC to public; 
grant delete on TB_OTMCC to public;  
grant insert on TB_OTMCC to public; 
grant select on SEQ_TB_OTMCC to public;   