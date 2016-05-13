20140811 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_PMTYB
��ṹ����:�������۴���ʱ���ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PMTYB;
drop index AK_TB_PMTYB;
drop table TB_PMTYB;
create table TB_PMTYB  (
   PMTYB_ID             INTEGER                         not null,  /*�������۴���ʱ��ID             */
   PMTYB001             INTEGER                         not null,  /*�������۴���id           */
   PMTYB002             DATE				not null,  /*������ʼʱ��           */
   PMTYB003             DATE				not null,  /*��������ʱ��           */
            
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PMTYB primary key (PMTYB_ID)
);

create sequence SEQ_TB_PMTYB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYB to public;
grant index  on TB_PMTYB to public;
grant update on TB_PMTYB to public; 
grant delete on TB_PMTYB to public;  
grant insert on TB_PMTYB to public; 
grant select on SEQ_TB_PMTYB to public;   