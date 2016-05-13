20140811 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_PMTYA
��ṹ����:�������۴�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PMTYA;
drop index AK_TB_PMTYA;
drop table TB_PMTYA;
create table TB_PMTYA  (
   PMTYA_ID             INTEGER                         not null,  /*�������۴���ID             */
   PMTYA001             INTEGER                         not null,  /*����id           */
   PMTYA002             VARCHAR2(30)                    not null,  /*�������۴�������           */
   PMTYA003             INTEGER                         not null,  /*��ͬid           */
   PMTYA004             INTEGER                         not null,  /*�̻�id           */
   PMTYA005             INTEGER                         not null,  /*��Ʒ��id           */
   PMTYA006             INTEGER                         not null,  /*��ϵ��id           */
   PMTYA007             INTEGER                         not null,  /*չλid           */
   PMTYA008             INTEGER,				   /*¥��id           */
   PMTYA009             INTEGER,				   /*¥��id           */
   PMTYA010             VARCHAR2(1)                     not null,  /*�����  1.����ײ� 2.�����ײ� 3.��Ʒ�ײ� 4.Ԥ��ʱ�� 5.Ԥ������� 6.�ض�ʱ�� */
   PMTYA011             NUMBER(12,2),				   /*�������1           */
   PMTYA012             NUMBER(12,2),				   /*�������2           */
   PMTYA013             NUMBER(12,2),				   /*�������3           */
   PMTYA014             INTEGER,				   /*��������1          */
   PMTYA015             INTEGER,				   /*��������2          */
   PMTYA016             INTEGER,				   /*Ԥ�������           */
   PMTYA017             INTEGER,				   /*��ǰԤ��ʱ�䣨������        */
   PMTYA018             date,					   /*�ض�ʱ��        */
   PMTYA019             INTEGER,				   /*�������1�ۿ��ʣ�%��           */
   PMTYA020             DATE				not null,  /*¼������           */
   PMTYA021             INTEGER				not null,  /*¼����id           */
   PMTYA022             DATE				not null,  /*�������           */
   PMTYA023             INTEGER				not null,  /*�����id           */
   PMTYA024             VARCHAR2(1)			not null,  /*���״̬    N:δ��� Y:����� default N       */
   PMTYA025             VARCHAR2(255),				   /*�������� */
   PMTYA026             INTEGER,				   /*�������2�ۿ��ʣ�%��           */
   PMTYA027             INTEGER,				   /*�������3�ۿ��ʣ�%��           */
   PMTYA028             INTEGER,				   /*��������1�ۿ��ʣ�%��           */
   PMTYA029             INTEGER,				   /*��������2�ۿ��ʣ�%��           */
   PMTYA030             INTEGER,				   /*Ԥ��������ۿ��ʣ�%��           */
   PMTYA031             INTEGER,				   /*��ǰԤ��ʱ���ۿ��ʣ�%��           */
   PMTYA032             INTEGER,				   /*�ض�ʱ���ۿ��ʣ�%��           */

   await_appr_group     VARCHAR2(255),                             /*��������ɫ               */
   await_appr_user      VARCHAR2(255),                             /*�������û�               */
   approved_group       VARCHAR2(255),                             /*��������ɫ               */
   approved_user        VARCHAR2(255),                             /*�������û�               */
   appr_status          VARCHAR2(1)                                /*����״̬ 1.��ͨ��  2.δͨ�� 3.������ 4.��ʧЧ
   start_appr_group     VARCHAR2(30)                               /*����������ɫ               */
   start_appr_user      VARCHAR2(30)                               /*���������û�               */    
   appr_memo            VARCHAR2(255),                             /*������ע*/                     
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PMTYA primary key (PMTYA_ID)
);
create unique index AK_TB_PMTYA on TB_PMTYA (PMTYA002,PMTYA003,PMTYA004);
create sequence SEQ_TB_PMTYA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYA to public;
grant index  on TB_PMTYA to public;
grant update on TB_PMTYA to public; 
grant delete on TB_PMTYA to public;  
grant insert on TB_PMTYA to public; 
grant select on SEQ_TB_PMTYA to public;   