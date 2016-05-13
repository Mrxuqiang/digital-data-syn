/*
20130716 add by gaoxl for ���ǣ�������SERHF015~SERHF019
*/
/*
================================================================================
��ṹ����:TB_SERHF
��ṹ����:���ǩ��ӡ��������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERHF;
drop index AK_TB_SERHF;
drop table TB_SERHF;
create table TB_SERHF  (
   SERHF_ID             INTEGER                         not null,  /*������id	 */
   SERHF001             INTEGER                         not null,  /*���뵥��id		 */
   SERHF002             VARCHAR2(30)                    not null,  /*���뵥��	         */
   SERHF003             DATE                            not null,  /*��������                */
   SERHF004             INTEGER                         not null,  /*չλid                */
   SERHF005             INTEGER                         not null,  /*���޺�ͬid                 */
   SERHF006             INTEGER                         not null,  /*�̻�id                 */
   SERHF007             INTEGER                         not null,  /*Ʒ��id                 */
   SERHF008             VARCHAR2(255),                             /*����ԭ��                 */
   SERHF009             DATE,                                      /*¼������                 */
   SERHF010             INTEGER,                                   /*¼����Ա                 */
   SERHF011             DATE,                                      /*�������                 */
   SERHF012             INTEGER,                                   /*�����Ա                 */
   SERHF013             VARCHAR2(1),                               /*����״̬                 */
   SERHF014             INTEGER                         not null,  /*Ӫ����֯id		 */
   SERHF015             VARCHAR2(1),                               /*��Ӫ��ʽ                   */
   SERHF016             VARCHAR2(30),                              /*��ϵ��                     */
   SERHF017             VARCHAR2(30),                              /*��ϵ�绰                   */
   SERHF018             VARCHAR2(1),                               /*���ǩ����                 */
   SERHF019             VARCHAR2(1),                               /*�۸�����                   */
   signature            VARCHAR2(2),                               /*ǩ��״̬                 */
   remark               VARCHAR2(255),                             /*ǩ��ԭ��                 */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                 /*����״̬             */
   constraint PK_TB_SERHF primary key (SERHF_ID)
);
create unique index AK_TB_SERHF on TB_SERHF (SERHF_ID,SERHF001);
create sequence SEQ_TB_SERHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERHF to public;
grant index  on TB_SERHF to public;
grant update on TB_SERHF to public; 
grant delete on TB_SERHF to public;  
grant insert on TB_SERHF to public; 
grant select on SEQ_TB_SERHF to public;   